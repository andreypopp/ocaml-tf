(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_client_certificate = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_api_gateway_client_certificate *)

let aws_api_gateway_client_certificate ?description ?id ?tags
    ?tags_all () : aws_api_gateway_client_certificate =
  { description; id; tags; tags_all }

type t = {
  arn : string prop;
  created_date : string prop;
  description : string prop;
  expiration_date : string prop;
  id : string prop;
  pem_encoded_certificate : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all __id =
  let __type = "aws_api_gateway_client_certificate" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       expiration_date = Prop.computed __type __id "expiration_date";
       id = Prop.computed __type __id "id";
       pem_encoded_certificate =
         Prop.computed __type __id "pem_encoded_certificate";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_client_certificate
        (aws_api_gateway_client_certificate ?description ?id ?tags
           ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
