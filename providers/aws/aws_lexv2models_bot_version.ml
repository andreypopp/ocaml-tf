(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type locale_specification = { source_bot_version : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : locale_specification) -> ()

let yojson_of_locale_specification =
  (function
   | { source_bot_version = v_source_bot_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_bot_version
         in
         ("source_bot_version", arg) :: bnds
       in
       `Assoc bnds
    : locale_specification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_locale_specification

[@@@deriving.end]

type aws_lexv2models_bot_version = {
  bot_id : string prop;
  bot_version : string prop option; [@option]
  description : string prop option; [@option]
  locale_specification : (string * locale_specification) list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lexv2models_bot_version) -> ()

let yojson_of_aws_lexv2models_bot_version =
  (function
   | {
       bot_id = v_bot_id;
       bot_version = v_bot_version;
       description = v_description;
       locale_specification = v_locale_specification;
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
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_locale_specification v1 in
                   `List [ v0; v1 ])
             v_locale_specification
         in
         ("locale_specification", arg) :: bnds
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
         match v_bot_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bot_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bot_id in
         ("bot_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_lexv2models_bot_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lexv2models_bot_version

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_lexv2models_bot_version ?bot_version ?description ?timeouts
    ~bot_id ~locale_specification () : aws_lexv2models_bot_version =
  {
    bot_id;
    bot_version;
    description;
    locale_specification;
    timeouts;
  }

type t = {
  bot_id : string prop;
  bot_version : string prop;
  description : string prop;
  id : string prop;
  locale_specification : (string * locale_specification) list prop;
}

let make ?bot_version ?description ?timeouts ~bot_id
    ~locale_specification __id =
  let __type = "aws_lexv2models_bot_version" in
  let __attrs =
    ({
       bot_id = Prop.computed __type __id "bot_id";
       bot_version = Prop.computed __type __id "bot_version";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       locale_specification =
         Prop.computed __type __id "locale_specification";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lexv2models_bot_version
        (aws_lexv2models_bot_version ?bot_version ?description
           ?timeouts ~bot_id ~locale_specification ());
    attrs = __attrs;
  }

let register ?tf_module ?bot_version ?description ?timeouts ~bot_id
    ~locale_specification __id =
  let (r : _ Tf_core.resource) =
    make ?bot_version ?description ?timeouts ~bot_id
      ~locale_specification __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
