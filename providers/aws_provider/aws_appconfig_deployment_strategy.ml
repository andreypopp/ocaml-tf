(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appconfig_deployment_strategy = {
  deployment_duration_in_minutes : float prop;
      (** deployment_duration_in_minutes *)
  description : string prop option; [@option]  (** description *)
  final_bake_time_in_minutes : float prop option; [@option]
      (** final_bake_time_in_minutes *)
  growth_factor : float prop;  (** growth_factor *)
  growth_type : string prop option; [@option]  (** growth_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  replicate_to : string prop;  (** replicate_to *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_appconfig_deployment_strategy *)

let aws_appconfig_deployment_strategy ?description
    ?final_bake_time_in_minutes ?growth_type ?id ?tags ?tags_all
    ~deployment_duration_in_minutes ~growth_factor ~name
    ~replicate_to __resource_id =
  let __resource_type = "aws_appconfig_deployment_strategy" in
  let __resource =
    {
      deployment_duration_in_minutes;
      description;
      final_bake_time_in_minutes;
      growth_factor;
      growth_type;
      id;
      name;
      replicate_to;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appconfig_deployment_strategy __resource);
  ()
