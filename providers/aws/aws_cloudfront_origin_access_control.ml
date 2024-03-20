(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudfront_origin_access_control = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  origin_access_control_origin_type : string prop;
      (** origin_access_control_origin_type *)
  signing_behavior : string prop;  (** signing_behavior *)
  signing_protocol : string prop;  (** signing_protocol *)
}
[@@deriving yojson_of]
(** aws_cloudfront_origin_access_control *)

let aws_cloudfront_origin_access_control ?description ?id ~name
    ~origin_access_control_origin_type ~signing_behavior
    ~signing_protocol () : aws_cloudfront_origin_access_control =
  {
    description;
    id;
    name;
    origin_access_control_origin_type;
    signing_behavior;
    signing_protocol;
  }

type t = {
  description : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  origin_access_control_origin_type : string prop;
  signing_behavior : string prop;
  signing_protocol : string prop;
}

let make ?description ?id ~name ~origin_access_control_origin_type
    ~signing_behavior ~signing_protocol __id =
  let __type = "aws_cloudfront_origin_access_control" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       origin_access_control_origin_type =
         Prop.computed __type __id
           "origin_access_control_origin_type";
       signing_behavior =
         Prop.computed __type __id "signing_behavior";
       signing_protocol =
         Prop.computed __type __id "signing_protocol";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_origin_access_control
        (aws_cloudfront_origin_access_control ?description ?id ~name
           ~origin_access_control_origin_type ~signing_behavior
           ~signing_protocol ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~name
    ~origin_access_control_origin_type ~signing_behavior
    ~signing_protocol __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~name ~origin_access_control_origin_type
      ~signing_behavior ~signing_protocol __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
