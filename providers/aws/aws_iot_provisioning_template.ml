(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type pre_provisioning_hook = {
  payload_version : string prop option; [@option]
  target_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pre_provisioning_hook) -> ()

let yojson_of_pre_provisioning_hook =
  (function
   | {
       payload_version = v_payload_version;
       target_arn = v_target_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_arn in
         ("target_arn", arg) :: bnds
       in
       let bnds =
         match v_payload_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "payload_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : pre_provisioning_hook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pre_provisioning_hook

[@@@deriving.end]

type aws_iot_provisioning_template = {
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  provisioning_role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  template_body : string prop;
  type_ : string prop option; [@option] [@key "type"]
  pre_provisioning_hook : pre_provisioning_hook list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_provisioning_template) -> ()

let yojson_of_aws_iot_provisioning_template =
  (function
   | {
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       name = v_name;
       provisioning_role_arn = v_provisioning_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       template_body = v_template_body;
       type_ = v_type_;
       pre_provisioning_hook = v_pre_provisioning_hook;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_pre_provisioning_hook then bnds
         else
           let arg =
             (yojson_of_list yojson_of_pre_provisioning_hook)
               v_pre_provisioning_hook
           in
           let bnd = "pre_provisioning_hook", arg in
           bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_template_body in
         ("template_body", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_provisioning_role_arn
         in
         ("provisioning_role_arn", arg) :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
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
    : aws_iot_provisioning_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_provisioning_template

[@@@deriving.end]

let pre_provisioning_hook ?payload_version ~target_arn () :
    pre_provisioning_hook =
  { payload_version; target_arn }

let aws_iot_provisioning_template ?description ?enabled ?id ?tags
    ?tags_all ?type_ ?(pre_provisioning_hook = []) ~name
    ~provisioning_role_arn ~template_body () :
    aws_iot_provisioning_template =
  {
    description;
    enabled;
    id;
    name;
    provisioning_role_arn;
    tags;
    tags_all;
    template_body;
    type_;
    pre_provisioning_hook;
  }

type t = {
  tf_name : string;
  arn : string prop;
  default_version_id : float prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  provisioning_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  template_body : string prop;
  type_ : string prop;
}

let make ?description ?enabled ?id ?tags ?tags_all ?type_
    ?(pre_provisioning_hook = []) ~name ~provisioning_role_arn
    ~template_body __id =
  let __type = "aws_iot_provisioning_template" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       default_version_id =
         Prop.computed __type __id "default_version_id";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       provisioning_role_arn =
         Prop.computed __type __id "provisioning_role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       template_body = Prop.computed __type __id "template_body";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_provisioning_template
        (aws_iot_provisioning_template ?description ?enabled ?id
           ?tags ?tags_all ?type_ ~pre_provisioning_hook ~name
           ~provisioning_role_arn ~template_body ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?id ?tags ?tags_all
    ?type_ ?(pre_provisioning_hook = []) ~name ~provisioning_role_arn
    ~template_body __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?id ?tags ?tags_all ?type_
      ~pre_provisioning_hook ~name ~provisioning_role_arn
      ~template_body __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
