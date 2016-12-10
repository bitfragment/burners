function field() {
    var i, foo,
        fields  = ["my", "your", "the"],
        fil     = fields.length,
        fallows = [".", "!", "."],
        fal     = fallows.length,
        arg     = [];
    for (i = 0; i < 100; i += 1) {
        foo     =  "";
        foo     += fields[Math.floor(Math.random() * fil)] + " field";
        foo     += fallows[Math.floor(Math.random() * fal)] + " ";
        arg.push(foo);
    }
    return arg;
}

function fielder() {
    var i,
        gar = field(),
        goo = "",
        grr = "",
        odio,
        mut = document.getElementById("lecture"),
        tap = document.getElementById("article"),
        voices;

    function squeak(goo, timeout) {
        setTimeout(function () {
            mut.innerHTML       =  goo;
            grr                 += goo + " ";
            tap.innerHTML       =  grr;
            odio                = new SpeechSynthesisUtterance(goo);
            voices              = window.speechSynthesis.getVoices();
            odio.voice          = voices.filter(function(voice)
                                { return voice.name == 'Alex'; })[0];
            odio.lang           = "en";
            odio.rate           = 1.75;
            odio.pitch          = Math.random() * 2;
            window.speechSynthesis.speak(odio);
        }, timeout);
    }

    for (i = 0; i < gar.length; i += 1) {
        goo = gar[i];
        squeak(goo, 1000 + (1000 * i));
    }
}
