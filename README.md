# CV - Aleksandr Kuznetsov

This is my CV/resume hosted on GitHub Pages: https://alejaldo.github.io/cv/

## PDF Generation

Several methods are available for creating a PDF version of the resume:

### Method 1: wkhtmltopdf (recommended) - Compact single-page version
```bash
./generate-pdf.sh
```
**Result:** Single-page PDF file (153KB) with optimized content

### Method 2: Puppeteer (Node.js) - Compact single-page version
```bash
npm install
npm run generate-pdf
```

### Method 3: Browser - Full web version
1. Open https://alejaldo.github.io/cv/
2. Press Ctrl+P (or Cmd+P on Mac)
3. Select "Save as PDF"
4. Configure print settings and save

### PDF Version Features:
- ✅ **Single-page format** - all information on one page
- ✅ **Compact design** - optimized for printing
- ✅ **Preserved style** - uses the same color scheme and typography
- ✅ **Complete content** - all important information included
- ✅ **Professional appearance** - ready for sending to employers

## File Structure

- `index.html` - main resume (web version with full design)
- `index-pdf.html` - compact version for PDF (single-page)
- `css/` - styles (normalize.css, skeleton.css)
- `images/` - images (avatar)
- `generate-pdf.js` - script for PDF generation via Puppeteer
- `generate-pdf.sh` - script for PDF generation via wkhtmltopdf
- `package.json` - Node.js dependencies
- `Aleksandr_Kuznetsov_CV.pdf` - ready PDF file (153KB, 1 page)

## Technologies

- HTML5
- CSS3 (Bootstrap 5)
- JavaScript
- Bootstrap Icons
- DevIcons
- Google Fonts (PT Sans Narrow)
