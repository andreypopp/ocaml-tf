(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_bucket_resource_access = {
  bucket_name : string prop;  (** bucket_name *)
  id : string prop option; [@option]  (** id *)
  resource_name : string prop;  (** resource_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_bucket_resource_access *)

let aws_lightsail_bucket_resource_access ?id ~bucket_name
    ~resource_name () : aws_lightsail_bucket_resource_access =
  { bucket_name; id; resource_name }

type t = {
  bucket_name : string prop;
  id : string prop;
  resource_name : string prop;
}

let make ?id ~bucket_name ~resource_name __id =
  let __type = "aws_lightsail_bucket_resource_access" in
  let __attrs =
    ({
       bucket_name = Prop.computed __type __id "bucket_name";
       id = Prop.computed __type __id "id";
       resource_name = Prop.computed __type __id "resource_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_bucket_resource_access
        (aws_lightsail_bucket_resource_access ?id ~bucket_name
           ~resource_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket_name ~resource_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~bucket_name ~resource_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
