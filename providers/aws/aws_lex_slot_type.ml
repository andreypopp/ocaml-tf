(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type enumeration_value = {
  synonyms : string prop list option; [@option]  (** synonyms *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** enumeration_value *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_lex_slot_type = {
  create_version : bool prop option; [@option]  (** create_version *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  value_selection_strategy : string prop option; [@option]
      (** value_selection_strategy *)
  enumeration_value : enumeration_value list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lex_slot_type *)

let enumeration_value ?synonyms ~value () : enumeration_value =
  { synonyms; value }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_lex_slot_type ?create_version ?description ?id
    ?value_selection_strategy ?timeouts ~name ~enumeration_value () :
    aws_lex_slot_type =
  {
    create_version;
    description;
    id;
    name;
    value_selection_strategy;
    enumeration_value;
    timeouts;
  }

type t = {
  checksum : string prop;
  create_version : bool prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  value_selection_strategy : string prop;
  version : string prop;
}

let make ?create_version ?description ?id ?value_selection_strategy
    ?timeouts ~name ~enumeration_value __id =
  let __type = "aws_lex_slot_type" in
  let __attrs =
    ({
       checksum = Prop.computed __type __id "checksum";
       create_version = Prop.computed __type __id "create_version";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       name = Prop.computed __type __id "name";
       value_selection_strategy =
         Prop.computed __type __id "value_selection_strategy";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lex_slot_type
        (aws_lex_slot_type ?create_version ?description ?id
           ?value_selection_strategy ?timeouts ~name
           ~enumeration_value ());
    attrs = __attrs;
  }

let register ?tf_module ?create_version ?description ?id
    ?value_selection_strategy ?timeouts ~name ~enumeration_value __id
    =
  let (r : _ Tf_core.resource) =
    make ?create_version ?description ?id ?value_selection_strategy
      ?timeouts ~name ~enumeration_value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
