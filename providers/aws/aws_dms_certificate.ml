(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dms_certificate = {
  certificate_id : string prop;  (** certificate_id *)
  certificate_pem : string prop option; [@option]
      (** certificate_pem *)
  certificate_wallet : string prop option; [@option]
      (** certificate_wallet *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_dms_certificate *)

type t = {
  certificate_arn : string prop;
  certificate_id : string prop;
  certificate_pem : string prop;
  certificate_wallet : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_dms_certificate ?certificate_pem ?certificate_wallet ?id
    ?tags ?tags_all ~certificate_id __resource_id =
  let __resource_type = "aws_dms_certificate" in
  let __resource =
    ({
       certificate_id;
       certificate_pem;
       certificate_wallet;
       id;
       tags;
       tags_all;
     }
      : aws_dms_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_certificate __resource);
  let __resource_attributes =
    ({
       certificate_arn =
         Prop.computed __resource_type __resource_id
           "certificate_arn";
       certificate_id =
         Prop.computed __resource_type __resource_id "certificate_id";
       certificate_pem =
         Prop.computed __resource_type __resource_id
           "certificate_pem";
       certificate_wallet =
         Prop.computed __resource_type __resource_id
           "certificate_wallet";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
