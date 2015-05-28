BEL format extensions
---------------------

*What is done?*

- Loading and registering BEL::Extension::Format extensions
  - Default load includes bel, json/json, and xbel
- Stream parsing where possible (e.g. some JSON implementation do not support this)
- Supports BEL script format
- Supports JSON evidence format
- Simple translation API.
- XML parsing using SAX (REXML)
- SAX handler
  * annotation definitions
  * namespace definitions
  * statements: subject, relationship, object term
  * statements: object statement
- Unified model: Object model including all relevant info for a piece of Evidence.
  * Evidence
  * Annotation definitions
  * Namespace definitions

*What is not done?*

- SAX handler
  * statementGroup
  * annnotationGroup: in the context of either a statement group or statement
    - annotations
    - citation
    - evidence
