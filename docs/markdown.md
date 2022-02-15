
# Markdown syntax

- https://www.markdownguide.org/basic-syntax/
- https://www.markdownguide.org/cheat-sheet/

|   element     |   syntax          |   example  |  info    |
|   ---         |   ---             | --- | --- |
|   code        | \`code\`          | `code` | |
|   block-code  | \```python<br> print(1)<br>\``` | (*) See example below. | First line may contain language for highlighting |
|   h1          | # heading 1 | | |
|   h2          | ## heading 2 | | |
|   h3          | ### heading 3 | | |
|   h4          | #### heading 4 | | |
|   h5          | ##### heading 5 | | |
|   h6          | ###### heading 6 | | |
|   italic      | \*italic\* | *italic* | |
|   bold        | \*\*bold\*\* | **bold** | |
|   blockquote  | \> blockquote | | Can be nested. <br> Use \> on empty line <br> to create paragraphs |
| ordered list  | n. First item <br> n. Second item <br> n. Third item              | 1. First item <br> 2. Second item <br> 3. Third item      | n is an arbitrary <br> number, the rendered <br> output will be <br> sorted either way. <br> Can be nested with <br> indent (four spaces or tab). |
| unordered list | - First item <br> - Second item <br> - Third item | | Can be nested <br> with indent (four spaces or tab). |
| images | \!\[Name of image\]\(/path/to/image.png\) | ![Name of image](https://d33wubrfki0l68.cloudfront.net/e7ed9fe4bafe46e275c807d63591f85f9ab246ba/e2d28/assets/images/tux.png) | |
| hr | \-\-\- | | |
| links | \[Name of link\]\(url\ \"Tooltip on hover\") | [Jump to #My PS1](#my-ps1 "Tooltip for My PS1 header") | |
| email or link | \<url\> <br> \<email\> | <jon.doe@gmail.com> | |
| newline | \<br\> | Hello <br> World | |
| --- | --- | --- | --- |

(*) code-block example
```python 
print(1)
```