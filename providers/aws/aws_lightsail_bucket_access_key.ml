(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_bucket_access_key = {
  bucket_name : string prop;  (** bucket_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_lightsail_bucket_access_key *)

let aws_lightsail_bucket_access_key ?id ~bucket_name () :
    aws_lightsail_bucket_access_key =
  { bucket_name; id }

type t = {
  access_key_id : string prop;
  bucket_name : string prop;
  created_at : string prop;
  id : string prop;
  secret_access_key : string prop;
  status : string prop;
}

let make ?id ~bucket_name __id =
  let __type = "aws_lightsail_bucket_access_key" in
  let __attrs =
    ({
       access_key_id = Prop.computed __type __id "access_key_id";
       bucket_name = Prop.computed __type __id "bucket_name";
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       secret_access_key =
         Prop.computed __type __id "secret_access_key";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_bucket_access_key
        (aws_lightsail_bucket_access_key ?id ~bucket_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket_name __id =
  let (r : _ Tf_core.resource) = make ?id ~bucket_name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
