const container=document.createElement('div');container.innerHTML=`
<div>
<label>Costi Fissi:<input type="number" id="fixedCost" value="1000"></label>
<label>Costi Variabili (per unità):<input type="number" id="variableCost" value="5"></label>
<label>Prezzo di Vendita (per unità):<input type="number" id="salePrice" value="10"></label>
</div>
<canvas id="bepCanvas" width="800" height="400" style="border:1px solid #000;"></canvas>
`;
document.querySelector('.canva').appendChild(container);

const fixedCostInput=document.getElementById('fixedCost');

const variableCostInput=document.getElementById('variableCost');
salePriceInput=document.getElementById('salePrice');

const canvas=document.getElementById('bepCanvas');
const ctx=canvas.getContext('2d');

function calculateBEP(fixedCost,variableCost,salePrice){return fixedCost/(salePrice-variableCost);}

function drawGraph(){

  const fixedCost=parseFloat(fixedCostInput.value);
  const variableCost=parseFloat(variableCostInput.value);
  const salePrice=parseFloat(salePriceInput.value);

  if(salePrice<=variableCost){alert('Il prezzo di vendita deve essere maggiore dei costi variabili per calcolare il BEP.');return;}

  const bep=calculateBEP(fixedCost,variableCost,salePrice);
  const maxUnits=Math.ceil(bep*1.5);
  const maxCost=Math.ceil(Math.max(fixedCost+variableCost*maxUnits,salePrice*maxUnits));

  ctx.clearRect(0,0,canvas.width,canvas.height);
  ctx.beginPath();ctx.moveTo(50,350);
  ctx.lineTo(750,350);
  ctx.moveTo(50,350);ctx.lineTo(50,50);
  ctx.stroke();
  ctx.font='14px Arial';ctx.fillText('Unità',750,370);ctx.fillText('Costi / Ricavi',10,50);

  const xStep=700/maxUnits;
  const yStep=300/maxCost;
  ctx.strokeStyle='#fff';
  ctx.font='12px Arial';
  for(let i=0;i<=maxUnits;i+=Math.ceil(maxUnits/10)){
    const x=50+i*xStep;
    ctx.beginPath();
    ctx.moveTo(x,50);
    ctx.lineTo(x,350);
    ctx.stroke();
    ctx.fillText(i,x-5,370);
  }

  for(let i=0;i<=maxCost;i+=Math.ceil(maxCost/10)){
    const y=350-i*yStep;
    ctx.beginPath();
    ctx.moveTo(50,y);
    ctx.lineTo(750,y);
    ctx.stroke();
    ctx.fillText(i,10,y+5);
  }

  ctx.beginPath();
  ctx.moveTo(50,350-fixedCost*yStep);
  ctx.lineTo(750,350-fixedCost*yStep);
  ctx.strokeStyle='red';ctx.stroke();
  ctx.fillText(`Costi Fissi: ${fixedCost}`,60,350-fixedCost*yStep-10);
  ctx.beginPath();
  ctx.moveTo(50,350);

  for(let x=0;x<=700;x+=10){
    const units=(x/700)*maxUnits;
    const totalCost=fixedCost+variableCost*units;
    ctx.lineTo(50+x,350-totalCost*yStep);
  }

  ctx.strokeStyle='blue';ctx.stroke();
  ctx.fillText('Costi Totali',700,350-(fixedCost+variableCost*maxUnits)*yStep-10);
  ctx.beginPath();
  ctx.moveTo(50,350);
  for(let x=0;x<=700;x+=10){
    const units=(x/700)*maxUnits;
    const revenue=salePrice*units;
    ctx.lineTo(50+x,350-revenue*yStep);
    }
    
  ctx.strokeStyle='green';
  ctx.stroke();
  ctx.fillText('Ricavi',700,350-(salePrice*maxUnits)*yStep-10);
  const bepX=50+(bep/maxUnits)*700;
  const bepY=350-(salePrice*bep)*yStep;

  ctx.beginPath();
  ctx.arc(bepX,bepY,5,0,2*Math.PI);
  ctx.fillStyle='orange';
  ctx.fill();
  ctx.fillText(`BEP: ${bep.toFixed(2)} unità`,bepX+10,bepY-10);
}

fixedCostInput.addEventListener('input',drawGraph);
variableCostInput.addEventListener('input',drawGraph);
salePriceInput.addEventListener('input',drawGraph);
drawGraph();