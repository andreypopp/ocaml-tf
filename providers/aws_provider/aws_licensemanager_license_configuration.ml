(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_licensemanager_license_configuration = {
  description : string option; [@option]  (** description *)
  license_count : float option; [@option]  (** license_count *)
  license_count_hard_limit : bool option; [@option]
      (** license_count_hard_limit *)
  license_counting_type : string;  (** license_counting_type *)
  license_rules : string list option; [@option]  (** license_rules *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_licensemanager_license_configuration *)

let aws_licensemanager_license_configuration ?description
    ?license_count ?license_count_hard_limit ?license_rules ?tags
    ~license_counting_type ~name __resource_id =
  let __resource_type = "aws_licensemanager_license_configuration" in
  let __resource =
    {
      description;
      license_count;
      license_count_hard_limit;
      license_counting_type;
      license_rules;
      name;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_licensemanager_license_configuration __resource);
  ()
