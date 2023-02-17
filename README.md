# coai

If you go to the following page and log in, then scroll to 'Add your API key'
and just below that you can create it inline on that page.

Then do this (or equivalent) to save it locally:

```
mkdir -p $HOME/.config/coai
echo "key = super_secret_key" > $HOME/.config/coai/key.conf
```

`chat [ -c <config with key> ] [ -m <model> ] [ -p <prolog file> ]`

Basic usage:

```
$ perl ./chat
Query? (type 'done.' to end)
Please write a poem about the founder of bitcoin.  Make it funny, but fact filled.
done.
Sending...
Response(s):
 0. 
Satoshi Nakamoto, the man of mystery,
Is the one who created Bitcoin history.
He's a genius beyond compare,
For he created a digital currency fair.

He wrote a paper on the blockchain,
Which gave us a decentralized system that can't be broken.
He's an anonymous figure, no one knows who he is,
But his invention of Bitcoin is a true biz.

He's a master of cryptography,
His ideas are revolutionary.
He created a new way to transact,
And it doesn't require any bank to act.

Satoshi Nakamoto, the man of mystery,
Is the one who created Bitcoin history.
He's a genius beyond compare,
For he created a digital currency fair.

     finish = stop
Stats: 1675737715 tot/prompt/compl tokens = 179/20/159

Query? (type 'done.' to end)
```

Basic testing:

```
$ perl ./hello
response:
$VAR1 = {
          'choices' => [
                         {
                           'index' => 0,
                           'logprobs' => undef,
                           'finish_reason' => 'stop',
                           'text' => '

"World!"'
                         }
                       ],
          'object' => 'text_completion',
          'created' => 1674607424,
          'id' => 'cmpl-6cOB68hw0PDqZGkzszNneBHKOFJBN',
          'model' => 'text-davinci-003',
          'usage' => {
                       'total_tokens' => 14,
                       'prompt_tokens' => 9,
                       'completion_tokens' => 5
                     }
        };

```
