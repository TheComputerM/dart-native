import { createSignal, For } from "solid-js";
import { $logs } from "~/lib/log";
import { Select } from "./ui/select";
import { Table } from "./ui/table";

const loggingLevels = [
  {
    label: "ALL",
    value: 0,
  },
  {
    label: "FINEST",
    value: 3,
  },
  {
    label: "FINER",
    value: 4,
  },
  {
    label: "FINE",
    value: 5,
  },
  {
    label: "CONFIG",
    value: 7,
  },
  {
    label: "INFO",
    value: 8,
  },
  {
    label: "WARNING",
    value: 9,
  },
  {
    label: "SEVERE",
    value: 10,
  },
];

const levelLabelMap = new Map<number, string>();
for (let level of loggingLevels) {
  levelLabelMap.set(level.value, level.label);
}

const LevelSelect = (props: {
  level: number;
  onLevelChange: (level: number) => void;
}) => {
  return (
    <Select.Root
      items={loggingLevels}
      size="sm"
      defaultValue={[props.level.toString()]}
      itemToValue={(item: any) => item.value.toString()}
      onValueChange={({ value }) => {
        props.onLevelChange(parseInt(value[0]));
      }}
    >
      <Select.Control>
        <Select.Trigger>
          <Select.ValueText placeholder="Level" />
        </Select.Trigger>
      </Select.Control>
      <Select.Positioner>
        <Select.Content>
          <For each={loggingLevels}>
            {(item) => (
              <Select.Item item={item}>
                <Select.ItemText>{item.label}</Select.ItemText>
              </Select.Item>
            )}
          </For>
        </Select.Content>
      </Select.Positioner>
    </Select.Root>
  );
};

export const LogsViewer = () => {
  const [logs] = $logs;
  const [levelFilter, setLevelFilter] = createSignal(loggingLevels[0].value);
  const filteredLogs = () =>
    logs().filter(({ level }) => level >= levelFilter());

  return (
    <Table.Root size="sm">
      <Table.Head position="sticky" top="0" bg="bg.subtle">
        <Table.Row>
          <Table.Header>
            <LevelSelect level={levelFilter()} onLevelChange={setLevelFilter} />
          </Table.Header>
          <Table.Header>Message</Table.Header>
        </Table.Row>
      </Table.Head>
      <Table.Body>
        <For each={filteredLogs()}>
          {(log) => (
            <Table.Row textStyle="xs">
              <Table.Cell>{levelLabelMap.get(log.level)}</Table.Cell>
              <Table.Cell>{log.message}</Table.Cell>
            </Table.Row>
          )}
        </For>
      </Table.Body>
    </Table.Root>
  );
};
