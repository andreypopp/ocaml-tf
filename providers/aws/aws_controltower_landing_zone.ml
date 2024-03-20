(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type drift_status = { status : string prop  (** status *) }
[@@deriving yojson_of]

type aws_controltower_landing_zone = {
  id : string prop option; [@option]  (** id *)
  manifest_json : string prop;  (** manifest_json *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  version : string prop;  (** version *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_controltower_landing_zone *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_controltower_landing_zone ?id ?tags ?tags_all ?timeouts
    ~manifest_json ~version () : aws_controltower_landing_zone =
  { id; manifest_json; tags; tags_all; version; timeouts }

type t = {
  arn : string prop;
  drift_status : drift_status list prop;
  id : string prop;
  latest_available_version : string prop;
  manifest_json : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

let make ?id ?tags ?tags_all ?timeouts ~manifest_json ~version __id =
  let __type = "aws_controltower_landing_zone" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       drift_status = Prop.computed __type __id "drift_status";
       id = Prop.computed __type __id "id";
       latest_available_version =
         Prop.computed __type __id "latest_available_version";
       manifest_json = Prop.computed __type __id "manifest_json";
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
      yojson_of_aws_controltower_landing_zone
        (aws_controltower_landing_zone ?id ?tags ?tags_all ?timeouts
           ~manifest_json ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~manifest_json
    ~version __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~manifest_json ~version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
