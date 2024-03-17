(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_configuration_set__delivery_options = {
  tls_policy : string option; [@option]  (** tls_policy *)
}
[@@deriving yojson_of]
(** aws_ses_configuration_set__delivery_options *)

type aws_ses_configuration_set__tracking_options = {
  custom_redirect_domain : string option; [@option]
      (** custom_redirect_domain *)
}
[@@deriving yojson_of]
(** aws_ses_configuration_set__tracking_options *)

type aws_ses_configuration_set = {
  name : string;  (** name *)
  reputation_metrics_enabled : bool option; [@option]
      (** reputation_metrics_enabled *)
  sending_enabled : bool option; [@option]  (** sending_enabled *)
  delivery_options :
    aws_ses_configuration_set__delivery_options list;
  tracking_options : aws_ses_configuration_set__tracking_options list;
}
[@@deriving yojson_of]
(** aws_ses_configuration_set *)

let aws_ses_configuration_set ?reputation_metrics_enabled
    ?sending_enabled ~name ~delivery_options ~tracking_options
    __resource_id =
  let __resource_type = "aws_ses_configuration_set" in
  let __resource =
    {
      name;
      reputation_metrics_enabled;
      sending_enabled;
      delivery_options;
      tracking_options;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_configuration_set __resource);
  ()
