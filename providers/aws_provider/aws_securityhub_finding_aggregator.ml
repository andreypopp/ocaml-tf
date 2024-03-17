(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_finding_aggregator = {
  id : string prop option; [@option]  (** id *)
  linking_mode : string prop;  (** linking_mode *)
  specified_regions : string prop list option; [@option]
      (** specified_regions *)
}
[@@deriving yojson_of]
(** aws_securityhub_finding_aggregator *)

let aws_securityhub_finding_aggregator ?id ?specified_regions
    ~linking_mode __resource_id =
  let __resource_type = "aws_securityhub_finding_aggregator" in
  let __resource = { id; linking_mode; specified_regions } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_finding_aggregator __resource);
  ()
