(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action_point__action = {
  description : string prop option; [@option]
  name : string prop;
  role_arn : string prop;
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action_point__action) -> ()

let yojson_of_action_point__action =
  (function
   | {
       description = v_description;
       name = v_name;
       role_arn = v_role_arn;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : action_point__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action_point__action

[@@@deriving.end]

type action_point = {
  point : string prop;
  action : action_point__action list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action_point) -> ()

let yojson_of_action_point =
  (function
   | { point = v_point; action = v_action } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_action_point__action) v_action
           in
           let bnd = "action", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_point in
         ("point", arg) :: bnds
       in
       `Assoc bnds
    : action_point -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action_point

[@@@deriving.end]

type parameter = {
  description : string prop option; [@option]
  name : string prop;
  required : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parameter) -> ()

let yojson_of_parameter =
  (function
   | {
       description = v_description;
       name = v_name;
       required = v_required;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "required", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameter

[@@@deriving.end]

type aws_appconfig_extension = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  action_point : action_point list;
      [@default []] [@yojson_drop_default ( = )]
  parameter : parameter list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appconfig_extension) -> ()

let yojson_of_aws_appconfig_extension =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       action_point = v_action_point;
       parameter = v_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_parameter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_parameter) v_parameter
           in
           let bnd = "parameter", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_action_point then bnds
         else
           let arg =
             (yojson_of_list yojson_of_action_point) v_action_point
           in
           let bnd = "action_point", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
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
       `Assoc bnds
    : aws_appconfig_extension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appconfig_extension

[@@@deriving.end]

let action_point__action ?description ~name ~role_arn ~uri () :
    action_point__action =
  { description; name; role_arn; uri }

let action_point ~point ~action () : action_point = { point; action }

let parameter ?description ?required ~name () : parameter =
  { description; name; required }

let aws_appconfig_extension ?description ?id ?tags ?tags_all ~name
    ~action_point ~parameter () : aws_appconfig_extension =
  { description; id; name; tags; tags_all; action_point; parameter }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

let make ?description ?id ?tags ?tags_all ~name ~action_point
    ~parameter __id =
  let __type = "aws_appconfig_extension" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appconfig_extension
        (aws_appconfig_extension ?description ?id ?tags ?tags_all
           ~name ~action_point ~parameter ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name
    ~action_point ~parameter __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name ~action_point
      ~parameter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
