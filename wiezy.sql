-- CarColor
ALTER TABLE CarColor ADD (
    CONSTRAINT carColorPK PRIMARY KEY (carColorKey),
    CONSTRAINT carColorNameUN UNIQUE (carColorName)
);

-- CarMark
ALTER TABLE CarMark ADD (
    CONSTRAINT carMarkPK PRIMARY KEY (carMarkKey),
    CONSTRAINT carMarkNameUN UNIQUE (carMarkName)
);

