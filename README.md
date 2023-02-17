# coai

To create your api key:
 - go to the [build-your-application](https://platform.openai.com/docs/quickstart/build-your-application) page
 - log in
 - then scroll to 'Add your API key'
 - just below that you can create it inline

Then do this (or equivalent) to save it locally:

```
mkdir -p $HOME/.config/coai
echo "key = super_secret_key" > $HOME/.config/coai/key.conf
```

`chat [ -c <config with key> ] [ -m <model> ] [ -p <prolog file> ]`

When using, note 'Query? ...' is the prompt, 'done.' is how you end to permit multiple lines
of input.  More examples [here](https://github.com/toddfries/coai/blob/master/EXAMPLES.md).

```
$ perl ./chat
Query? (type 'done.' to end)
Show me 'hello, world' in C, ruby, python, m4, ada.
done.
Requesting... model/temp = text-davinci-003/0.5 .. real 6.57489500s
Response(s):
Choice# 0:

C:
#include <stdio.h>
int main()
{
    printf("Hello, world!");
    return 0;
}

Ruby:
puts "Hello, world!"

Python:
print("Hello, world!")

M4:
define(`hello_world', `Hello, world!')

Ada:
with Ada.Text_IO;
use Ada.Text_IO;

procedure Hello_World is
begin
   Put_Line("Hello, world!");
end Hello_World;


     finish = stop
Stats: 1676650793 tot/prompt/compl tokens = 147/21/126
```

Geek alert full data structures ahead!

```
$ perl ./hello

```
response:
$VAR1 = {
          'choices' => [
                         {
                           'index' => 0,
                           'logprobs' => undef,
                           'finish_reason' => 'stop',
                           'text' => '

The answer would depend on what the programmer is writing. Some common responses to "Hello" in a program might be "Hi there!", "How can I help you?", or "What do you need?"'
                         }
                       ],
          'object' => 'text_completion',
          'created' => 1676651374,
          'id' => 'cmpl-6kxu2Qyiy22auA8DklVgryYiPkZ9j',
          'model' => 'text-davinci-003',
          'usage' => {
                       'completion_tokens' => 43,
                       'total_tokens' => 52,
                       'prompt_tokens' => 9
                     }
        };

```
