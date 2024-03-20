(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_hsm_client_certificate = {
  hsm_client_certificate_identifier : string prop;
      (** hsm_client_certificate_identifier *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshift_hsm_client_certificate *)

let aws_redshift_hsm_client_certificate ?id ?tags ?tags_all
    ~hsm_client_certificate_identifier () :
    aws_redshift_hsm_client_certificate =
  { hsm_client_certificate_identifier; id; tags; tags_all }

type t = {
  arn : string prop;
  hsm_client_certificate_identifier : string prop;
  hsm_client_certificate_public_key : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~hsm_client_certificate_identifier __id
    =
  let __type = "aws_redshift_hsm_client_certificate" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       hsm_client_certificate_identifier =
         Prop.computed __type __id
           "hsm_client_certificate_identifier";
       hsm_client_certificate_public_key =
         Prop.computed __type __id
           "hsm_client_certificate_public_key";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_hsm_client_certificate
        (aws_redshift_hsm_client_certificate ?id ?tags ?tags_all
           ~hsm_client_certificate_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ~hsm_client_certificate_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~hsm_client_certificate_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
