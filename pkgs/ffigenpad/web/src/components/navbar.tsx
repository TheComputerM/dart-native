import { Flex } from "styled-system/jsx";
import { Heading } from "./ui/heading";
import { Button } from "./ui/button";

export const Navbar = () => {
  return (
    <Flex
      justify="space-between"
      align="center"
      px="4"
      height="48px"
      flexShrink={0}
    >
      <Heading as="h1" textStyle="2xl">
        FFIgenPad
      </Heading>
      <Button
        variant="link"
        asChild={(props) => (
          <a
            {...props()}
            href="https://github.com/dart-lang/native/tree/main/pkgs/ffigen"
            target="_blank"
          >
            About
          </a>
        )}
      />
    </Flex>
  );
};