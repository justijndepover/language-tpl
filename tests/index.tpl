<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Test</title>
    </head>
    <body>
        {*this is considered a comment*}
        {*
            this is a comment over
            multiple lines
        *}
        {* you cannot {* nest *} comments *}
        <div class="normal-class {option:oCondition}wow{/option:oCondition}">
            {option:oCondition}<p>this is awesome</p>{option:oCondition}

            {option:oCondition}
            <p>This is an option</p>
            <p>separated over multiple lines</p>
            {option:oCondition}

            <p {option:oAttribute}data-attribute="wicked"{/option:oAttribute}>This is an option inside a tag</p>

            <p>TPL also supports {$variables} or even {$variables} with conditions:</p>
            <ul>
                <li>{$variable|addslashes}</li>
                <li>{$variable|htmlentities}</li>
                <li>{$variable|length}</li>
                <li>{$variable|lowercase}</li>
                <li>{$variable|ltrim}</li>
                <li>{$variable|nl2br}</li>
                <li>{$variable|repeat:3}</li>
                <li>{$variable|rtrim}</li>
                <li>{$variable|shuffle}</li>
                <li>{$variable|stripslashes}</li>
                <li>{$variable|substring:2:9}</li>
                <li>{$variable|trim}</li>
                <li>{$variable|truncate:15}</li>
                <li>{$variable|ucfirst}</li>
                <li>{$variable|ucwords}</li>
                <li>{$variable|uppercase}</li>
            </ul>

            {iteration:iIteration}
            <span>{$name} is part of an iteration</span>
            {/iteration:iIteration}

            including files should be easy
            {include="testfile.html"}

            {$BR} {$TAB} are constants
        </div>
    </body>
</html>