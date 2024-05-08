(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type enumeration_value = {
  synonyms : string prop list option; [@option]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : enumeration_value) -> ()

let yojson_of_enumeration_value =
  (function
   | { synonyms = v_synonyms; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_synonyms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "synonyms", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : enumeration_value -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_enumeration_value

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_lex_slot_type = {
  create_version : bool prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  value_selection_strategy : string prop option; [@option]
  enumeration_value : enumeration_value list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lex_slot_type) -> ()

let yojson_of_aws_lex_slot_type =
  (function
   | {
       create_version = v_create_version;
       description = v_description;
       id = v_id;
       name = v_name;
       value_selection_strategy = v_value_selection_strategy;
       enumeration_value = v_enumeration_value;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_enumeration_value then bnds
         else
           let arg =
             (yojson_of_list yojson_of_enumeration_value)
               v_enumeration_value
           in
           let bnd = "enumeration_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_value_selection_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value_selection_strategy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lex_slot_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lex_slot_type

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
