(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type pre_provisioning_hook = {
  payload_version : string prop option; [@option]
      (** payload_version *)
  target_arn : string prop;  (** target_arn *)
}
[@@deriving yojson_of]
(** pre_provisioning_hook *)

type aws_iot_provisioning_template = {
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  provisioning_role_arn : string prop;  (** provisioning_role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  template_body : string prop;  (** template_body *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  pre_provisioning_hook : pre_provisioning_hook list;
}
[@@deriving yojson_of]
(** aws_iot_provisioning_template *)

let pre_provisioning_hook ?payload_version ~target_arn () :
    pre_provisioning_hook =
  { payload_version; target_arn }

let aws_iot_provisioning_template ?description ?enabled ?id ?tags
    ?tags_all ?type_ ~name ~provisioning_role_arn ~template_body
    ~pre_provisioning_hook () : aws_iot_provisioning_template =
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

let make ?description ?enabled ?id ?tags ?tags_all ?type_ ~name
    ~provisioning_role_arn ~template_body ~pre_provisioning_hook __id
    =
  let __type = "aws_iot_provisioning_template" in
  let __attrs =
    ({
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
           ?tags ?tags_all ?type_ ~name ~provisioning_role_arn
           ~template_body ~pre_provisioning_hook ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?id ?tags ?tags_all
    ?type_ ~name ~provisioning_role_arn ~template_body
    ~pre_provisioning_hook __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?id ?tags ?tags_all ?type_ ~name
      ~provisioning_role_arn ~template_body ~pre_provisioning_hook
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
