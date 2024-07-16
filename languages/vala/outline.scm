(class_declaration
    (access_modifier)? @context
    (type_declaration_modifier)* @context
    "class" @context
    (unqualified_type) @name
    ; TODO: should we include what this interface extends?
) @item

(constructor_declaration
    (constructor_declaration_modifier)* @context
    "construct" @context
) @item

(destructor_declaration
    (constructor_declaration_modifier)* @context
    "~" @name
    (identifier) @name
    "(" @context
    ")" @context
) @item

(property_declaration
    (access_modifier)? @context
    (member_declaration_modifier)* @context
    (type) @context
    (symbol) @name
    ; TODO: is there a way to show get/set in the outline?
) @item

(field_declaration
    (access_modifier)? @context
    (member_declaration_modifier)* @context
    (type) @context
    (identifier) @name
) @item

(enum_declaration
    (access_modifier)? @context
    (type_declaration_modifier)* @context
    "enum" @context
    (symbol) @name
) @item

(namespace_declaration
    "namespace" @context
    (symbol) @name
) @item

(constant_declaration
    (access_modifier)? @context
    (member_declaration_modifier)* @context
    "const" @context
    (type) @context
    (identifier) @name
) @item

(method_declaration
    (access_modifier)? @context
    (member_declaration_modifier)* @context
    (type) @context
    (symbol) @name
    (type_arguments)? @context
    "(" @context
    (
        (parameter)
        ("," @context (parameter) @context)*
    )? @context
    .
    ")" @context
    ; TODO: should we include throws and ensures into the outline?
) @item

(creation_method_declaration
    (access_modifier)? @context
    (member_declaration_modifier)* @context
    (symbol) @name
    "(" @context
    (
        (parameter)
        ("," @context (parameter) @context)*
    )? @context
    .
    ")" @context
    ; TODO: should we include throws and ensures into the outline?
) @item

(interface_declaration
    (access_modifier)? @context
    (type_declaration_modifier)* @context
    "interface" @context
    (unqualified_type) @name
    ; TODO: should we include what this interface extends?
) @item

(struct_declaration
    (access_modifier)? @context
    (type_declaration_modifier)* @context
    "struct" @context
    (unqualified_type) @name
) @item

(errordomain_declaration
    (access_modifier)? @context
    (type_declaration_modifier)* @context
    "errordomain" @context
    (symbol) @name
) @item

(delegate_declaration
    (access_modifier)? @context
    (delegate_declaration_modifier)* @context
    "delegate" @context
    (type) @context
    (symbol) @name
    (type_arguments)? @context
    "(" @context
    (
        (parameter)
        ("," @context (parameter) @context)*
    )? @context
    .
    ")" @context
    ; TODO: should we include throws into the outline
) @item

(signal_declaration
    (access_modifier)? @context
    (signal_declaration_modifier)* @context
    "signal" @context
    (type) @context
    (symbol) @name
    "(" @context
    (
        (parameter)
        ("," @context (parameter) @context)*
    )? @context
    .
    ")" @context
) @item
