const puppeteer = require('puppeteer');
const path = require('path');

async function generatePDF() {
  const browser = await puppeteer.launch({
    headless: true,
    args: ['--no-sandbox', '--disable-setuid-sandbox']
  });
  
  const page = await browser.newPage();
  
  // Load compact HTML version for PDF
  const htmlPath = path.join(__dirname, 'index-pdf.html');
  await page.goto(`file://${htmlPath}`, {
    waitUntil: 'networkidle0'
  });
  
  // Generate PDF
  const pdf = await page.pdf({
    path: 'Aleksandr_Kuznetsov_CV.pdf',
    format: 'A4',
    printBackground: true,
    margin: {
      top: '20mm',
      right: '20mm',
      bottom: '20mm',
      left: '20mm'
    },
    displayHeaderFooter: true,
    headerTemplate: '<div style="font-size: 10px; text-align: center; width: 100%; color: #666;">Aleksandr Kuznetsov - Ruby on Rails Developer</div>',
    footerTemplate: '<div style="font-size: 10px; text-align: center; width: 100%; color: #666;">Page <span class="pageNumber"></span> of <span class="totalPages"></span></div>'
  });
  
  await browser.close();
  
  console.log('PDF successfully created: Aleksandr_Kuznetsov_CV.pdf');
}

generatePDF().catch(console.error);
