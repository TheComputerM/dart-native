import { yaml } from "@codemirror/lang-yaml";
import { basicSetup, EditorView } from "codemirror";
import { onMount } from "solid-js";
import { Box } from "styled-system/jsx";
import { $ffigenConfig } from "~/lib/ffigen-config";

export const ConfigEditor = () => {
  let editorRef: HTMLDivElement;
  let editor: EditorView;

  const [ffigenConfig, setFfigenConfig] = $ffigenConfig;

  onMount(() => {
    editor = new EditorView({
      doc: ffigenConfig(),
      extensions: [
        basicSetup,
        yaml(),
        EditorView.domEventHandlers({
          blur: (_, view) => {
            setFfigenConfig(view.state.doc.toString());
          },
        }),
        EditorView.theme({
          "&": {
            height: "100%",
          },
        }),
      ],
      parent: editorRef!,
    });

    return () => {
      editor.destroy();
    };
  });
  return <Box height="full" flexGrow={1} ref={editorRef} />;
};
