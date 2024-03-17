(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_devicefarm_network_profile = {
  description : string prop option; [@option]  (** description *)
  downlink_bandwidth_bits : float prop option; [@option]
      (** downlink_bandwidth_bits *)
  downlink_delay_ms : float prop option; [@option]
      (** downlink_delay_ms *)
  downlink_jitter_ms : float prop option; [@option]
      (** downlink_jitter_ms *)
  downlink_loss_percent : float prop option; [@option]
      (** downlink_loss_percent *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  project_arn : string prop;  (** project_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  uplink_bandwidth_bits : float prop option; [@option]
      (** uplink_bandwidth_bits *)
  uplink_delay_ms : float prop option; [@option]
      (** uplink_delay_ms *)
  uplink_jitter_ms : float prop option; [@option]
      (** uplink_jitter_ms *)
  uplink_loss_percent : float prop option; [@option]
      (** uplink_loss_percent *)
}
[@@deriving yojson_of]
(** aws_devicefarm_network_profile *)

let aws_devicefarm_network_profile ?description
    ?downlink_bandwidth_bits ?downlink_delay_ms ?downlink_jitter_ms
    ?downlink_loss_percent ?id ?tags ?tags_all ?type_
    ?uplink_bandwidth_bits ?uplink_delay_ms ?uplink_jitter_ms
    ?uplink_loss_percent ~name ~project_arn __resource_id =
  let __resource_type = "aws_devicefarm_network_profile" in
  let __resource =
    {
      description;
      downlink_bandwidth_bits;
      downlink_delay_ms;
      downlink_jitter_ms;
      downlink_loss_percent;
      id;
      name;
      project_arn;
      tags;
      tags_all;
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
