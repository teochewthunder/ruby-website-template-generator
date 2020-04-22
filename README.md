# Ruby Website Template Generator
This little Ruby Script creates directories and text files in the structure of a typical web site.

## Input
- Site Name
- Folder Name. Validation is put in place to ensure that folder does not already exist. Also, a parent directory may be specified, but validation will take place to ensure that parent exists. (i.e, id `C:\site\website\` is specified, `C:\site` must be verified.

## Output
- Folder specified by Folder Name.
- `js`, `css` and `img` folders within that folder.
- The `js` folder has a blank js file created within it.
- The `css` folder has a blank css file created within it.
- `index.html` is created. Within this file, a typical HTML5 page is set up, with Site Name being used in the title tag.
