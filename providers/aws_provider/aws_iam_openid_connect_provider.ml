(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_openid_connect_provider = {
  client_id_list : string prop list;  (** client_id_list *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  thumbprint_list : string prop list;  (** thumbprint_list *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** aws_iam_openid_connect_provider *)

type t = {
  arn : string prop;
  client_id_list : string list prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  thumbprint_list : string list prop;
  url : string prop;
}

let aws_iam_openid_connect_provider ?id ?tags ?tags_all
    ~client_id_list ~thumbprint_list ~url __resource_id =
  let __resource_type = "aws_iam_openid_connect_provider" in
  let __resource =
    ({ client_id_list; id; tags; tags_all; thumbprint_list; url }
      : aws_iam_openid_connect_provider)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_openid_connect_provider __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       client_id_list =
         Prop.computed __resource_type __resource_id "client_id_list";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       thumbprint_list =
         Prop.computed __resource_type __resource_id
           "thumbprint_list";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
