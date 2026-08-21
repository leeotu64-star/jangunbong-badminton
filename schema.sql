create table if not exists waiting_state (
  id text primary key,
  settings jsonb not null,
  max_per_court integer not null default 5,
  finished jsonb not null default '{}'::jsonb,
  courts jsonb not null,
  updated_at timestamptz not null default now()
);

alter table waiting_state enable row level security;

create policy "public read" on waiting_state for select using (true);
create policy "public insert" on waiting_state for insert with check (true);
create policy "public update" on waiting_state for update using (true) with check (true);

alter publication supabase_realtime add table waiting_state;
