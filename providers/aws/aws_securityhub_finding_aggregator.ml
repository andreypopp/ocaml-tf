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
    ~linking_mode () : aws_securityhub_finding_aggregator =
  { id; linking_mode; specified_regions }

type t = {
  id : string prop;
  linking_mode : string prop;
  specified_regions : string list prop;
}

let register ?tf_module ?id ?specified_regions ~linking_mode
    __resource_id =
  let __resource_type = "aws_securityhub_finding_aggregator" in
  let __resource =
    aws_securityhub_finding_aggregator ?id ?specified_regions
      ~linking_mode ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_finding_aggregator __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       linking_mode =
         Prop.computed __resource_type __resource_id "linking_mode";
       specified_regions =
         Prop.computed __resource_type __resource_id
           "specified_regions";
     }
      : t)
  in
  __resource_attributes
