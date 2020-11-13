export interface TabProps {
    index: number;
    name: string;
    panel?: React.ReactNode;
    icon?: React.ReactElement;
    activeClassName?: string
}

export interface TabPanelProps {
    children?: React.ReactNode;
    index: any;
    value: any;
}