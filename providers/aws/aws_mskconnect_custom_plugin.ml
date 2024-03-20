(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type location__s3 = {
  bucket_arn : string prop;  (** bucket_arn *)
  file_key : string prop;  (** file_key *)
  object_version : string prop option; [@option]
      (** object_version *)
}
[@@deriving yojson_of]
(** location__s3 *)

type location = { s3 : location__s3 list } [@@deriving yojson_of]
(** location *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_mskconnect_custom_plugin = {
  content_type : string prop;  (** content_type *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  location : location list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_mskconnect_custom_plugin *)

let location__s3 ?object_version ~bucket_arn ~file_key () :
    location__s3 =
  { bucket_arn; file_key; object_version }

let location ~s3 () : location = { s3 }
let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_mskconnect_custom_plugin ?description ?id ?timeouts
    ~content_type ~name ~location () : aws_mskconnect_custom_plugin =
  { content_type; description; id; name; location; timeouts }

type t = {
  arn : string prop;
  content_type : string prop;
  description : string prop;
  id : string prop;
  latest_revision : float prop;
  name : string prop;
  state : string prop;
}

let make ?description ?id ?timeouts ~content_type ~name ~location
    __id =
  let __type = "aws_mskconnect_custom_plugin" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       content_type = Prop.computed __type __id "content_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       latest_revision = Prop.computed __type __id "latest_revision";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_mskconnect_custom_plugin
        (aws_mskconnect_custom_plugin ?description ?id ?timeouts
           ~content_type ~name ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~content_type
    ~name ~location __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~content_type ~name ~location
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
