(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_licensemanager_license_configuration = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  license_count : float prop option; [@option]  (** license_count *)
  license_count_hard_limit : bool prop option; [@option]
      (** license_count_hard_limit *)
  license_counting_type : string prop;  (** license_counting_type *)
  license_rules : string prop list option; [@option]
      (** license_rules *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_licensemanager_license_configuration *)

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  license_count : float prop;
  license_count_hard_limit : bool prop;
  license_counting_type : string prop;
  license_rules : string list prop;
  name : string prop;
  owner_account_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_licensemanager_license_configuration ?description ?id
    ?license_count ?license_count_hard_limit ?license_rules ?tags
    ?tags_all ~license_counting_type ~name __resource_id =
  let __resource_type = "aws_licensemanager_license_configuration" in
  let __resource =
    ({
       description;
       id;
       license_count;
       license_count_hard_limit;
       license_counting_type;
       license_rules;
       name;
       tags;
       tags_all;
     }
      : aws_licensemanager_license_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_licensemanager_license_configuration __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       license_count =
         Prop.computed __resource_type __resource_id "license_count";
       license_count_hard_limit =
         Prop.computed __resource_type __resource_id
           "license_count_hard_limit";
       license_counting_type =
         Prop.computed __resource_type __resource_id
           "license_counting_type";
       license_rules =
         Prop.computed __resource_type __resource_id "license_rules";
       name = Prop.computed __resource_type __resource_id "name";
       owner_account_id =
         Prop.computed __resource_type __resource_id
           "owner_account_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
