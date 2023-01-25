Basic use:

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

