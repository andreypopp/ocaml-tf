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

let aws_licensemanager_license_configuration ?description ?id
    ?license_count ?license_count_hard_limit ?license_rules ?tags
    ?tags_all ~license_counting_type ~name __resource_id =
  let __resource_type = "aws_licensemanager_license_configuration" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_licensemanager_license_configuration __resource);
  ()
