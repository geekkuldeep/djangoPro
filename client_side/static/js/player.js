
var current=1;
var audio= document.getElementById('playtrack');
$("#previewPause").click(function(){
audio.pause();
$("#previewPause").css("display","none");
$("#previewPlay").css("display","block");
});

$("#previewPlay").click(function(){  
settime(current);
});

function settime(i){
if(i>totalTracks)
{
i=1;
}
if(i<1)
{
i=totalTracks;
}

current=i;
$("#previewPause").css("display","block");
$("#previewPlay").css("display","none");
$("#playtrack").attr("src",$("#ta"+i).text());
$("#currentTrackCover").attr("src",$("#trackCover"+i).attr("src"));

$("#currentTrackName").text($("#trackName"+i).text());

audio.currentTime=0;
audio.play();
moveProgressBar(audio.currentTime);
$("#remainingTime").text(num2time("00"+audio.currentTime));
$("#totalTime").text(num2time("00"+timeLimit));
var preview=setInterval(function(){
moveProgressBar(audio.currentTime);
    if(audio.currentTime>timeLimit){
        audio.currentTime=0;
           audio.pause();
        clearInterval(preview);
        settime(++current);
       
            }
        },10);

    }
function callSubscriptionPopup()
{
     $("#popup").trigger("click");
}
function moveProgressBar(t)
{
  var elem = document.getElementById("previewProgress");  
  width=Math.round(t*100/timeLimit);
  elem.style.width = width + '%';
   $("#remainingTime").text(num2time(t));
}
$("#previewForward").click(function(){
    loadNextTrack();
     playlistowl.trigger('next.owl.carousel');
   
    });
   
    $("#previewBackward").click(function(){
    loadPrevTrack();
    playlistowl.trigger('prev.owl.carousel');
    });
   
   function loadNextTrack()
   {
    settime(++current);
   }
   function loadPrevTrack()
   {
     settime(--current); 
   }