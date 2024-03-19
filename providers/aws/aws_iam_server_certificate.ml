(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_server_certificate = {
  certificate_body : string prop;  (** certificate_body *)
  certificate_chain : string prop option; [@option]
      (** certificate_chain *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  path : string prop option; [@option]  (** path *)
  private_key : string prop;  (** private_key *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_iam_server_certificate *)

let aws_iam_server_certificate ?certificate_chain ?id ?name
    ?name_prefix ?path ?tags ?tags_all ~certificate_body ~private_key
    () : aws_iam_server_certificate =
  {
    certificate_body;
    certificate_chain;
    id;
    name;
    name_prefix;
    path;
    private_key;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  certificate_body : string prop;
  certificate_chain : string prop;
  expiration : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  path : string prop;
  private_key : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  upload_date : string prop;
}

let register ?tf_module ?certificate_chain ?id ?name ?name_prefix
    ?path ?tags ?tags_all ~certificate_body ~private_key
    __resource_id =
  let __resource_type = "aws_iam_server_certificate" in
  let __resource =
    aws_iam_server_certificate ?certificate_chain ?id ?name
      ?name_prefix ?path ?tags ?tags_all ~certificate_body
      ~private_key ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_server_certificate __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       certificate_body =
         Prop.computed __resource_type __resource_id
           "certificate_body";
       certificate_chain =
         Prop.computed __resource_type __resource_id
           "certificate_chain";
       expiration =
         Prop.computed __resource_type __resource_id "expiration";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       path = Prop.computed __resource_type __resource_id "path";
       private_key =
         Prop.computed __resource_type __resource_id "private_key";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       upload_date =
         Prop.computed __resource_type __resource_id "upload_date";
     }
      : t)
  in
  __resource_attributes
