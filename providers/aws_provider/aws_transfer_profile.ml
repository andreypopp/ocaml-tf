(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_profile = {
  as2_id : string prop;  (** as2_id *)
  certificate_ids : string prop list option; [@option]
      (** certificate_ids *)
  id : string prop option; [@option]  (** id *)
  profile_type : string prop;  (** profile_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_transfer_profile *)

type t = {
  arn : string prop;
  as2_id : string prop;
  certificate_ids : string list prop;
  id : string prop;
  profile_id : string prop;
  profile_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_transfer_profile ?certificate_ids ?id ?tags ?tags_all ~as2_id
    ~profile_type __resource_id =
  let __resource_type = "aws_transfer_profile" in
  let __resource =
    ({ as2_id; certificate_ids; id; profile_type; tags; tags_all }
      : aws_transfer_profile)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_profile __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       as2_id = Prop.computed __resource_type __resource_id "as2_id";
       certificate_ids =
         Prop.computed __resource_type __resource_id
           "certificate_ids";
       id = Prop.computed __resource_type __resource_id "id";
       profile_id =
         Prop.computed __resource_type __resource_id "profile_id";
       profile_type =
         Prop.computed __resource_type __resource_id "profile_type";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
