(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_devicefarm_network_profile = {
  description : string option; [@option]  (** description *)
  downlink_bandwidth_bits : float option; [@option]
      (** downlink_bandwidth_bits *)
  downlink_delay_ms : float option; [@option]
      (** downlink_delay_ms *)
  downlink_jitter_ms : float option; [@option]
      (** downlink_jitter_ms *)
  downlink_loss_percent : float option; [@option]
      (** downlink_loss_percent *)
  name : string;  (** name *)
  project_arn : string;  (** project_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  uplink_bandwidth_bits : float option; [@option]
      (** uplink_bandwidth_bits *)
  uplink_delay_ms : float option; [@option]  (** uplink_delay_ms *)
  uplink_jitter_ms : float option; [@option]  (** uplink_jitter_ms *)
  uplink_loss_percent : float option; [@option]
      (** uplink_loss_percent *)
}
[@@deriving yojson_of]
(** aws_devicefarm_network_profile *)

let aws_devicefarm_network_profile ?description
    ?downlink_bandwidth_bits ?downlink_delay_ms ?downlink_jitter_ms
    ?downlink_loss_percent ?tags ?type_ ?uplink_bandwidth_bits
    ?uplink_delay_ms ?uplink_jitter_ms ?uplink_loss_percent ~name
    ~project_arn __resource_id =
  let __resource_type = "aws_devicefarm_network_profile" in
  let __resource =
    {
      description;
      downlink_bandwidth_bits;
      downlink_delay_ms;
      downlink_jitter_ms;
      downlink_loss_percent;
      name;
      project_arn;
      tags;
      type_;
      uplink_bandwidth_bits;
      uplink_delay_ms;
      uplink_jitter_ms;
      uplink_loss_percent;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_devicefarm_network_profile __resource);
  ()
