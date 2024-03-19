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
    ?uplink_loss_percent ~name ~project_arn () :
    aws_devicefarm_network_profile =
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

type t = {
  arn : string prop;
  description : string prop;
  downlink_bandwidth_bits : float prop;
  downlink_delay_ms : float prop;
  downlink_jitter_ms : float prop;
  downlink_loss_percent : float prop;
  id : string prop;
  name : string prop;
  project_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  uplink_bandwidth_bits : float prop;
  uplink_delay_ms : float prop;
  uplink_jitter_ms : float prop;
  uplink_loss_percent : float prop;
}

let register ?tf_module ?description ?downlink_bandwidth_bits
    ?downlink_delay_ms ?downlink_jitter_ms ?downlink_loss_percent ?id
    ?tags ?tags_all ?type_ ?uplink_bandwidth_bits ?uplink_delay_ms
    ?uplink_jitter_ms ?uplink_loss_percent ~name ~project_arn
    __resource_id =
  let __resource_type = "aws_devicefarm_network_profile" in
  let __resource =
    aws_devicefarm_network_profile ?description
      ?downlink_bandwidth_bits ?downlink_delay_ms ?downlink_jitter_ms
      ?downlink_loss_percent ?id ?tags ?tags_all ?type_
      ?uplink_bandwidth_bits ?uplink_delay_ms ?uplink_jitter_ms
      ?uplink_loss_percent ~name ~project_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_devicefarm_network_profile __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       downlink_bandwidth_bits =
         Prop.computed __resource_type __resource_id
           "downlink_bandwidth_bits";
       downlink_delay_ms =
         Prop.computed __resource_type __resource_id
           "downlink_delay_ms";
       downlink_jitter_ms =
         Prop.computed __resource_type __resource_id
           "downlink_jitter_ms";
       downlink_loss_percent =
         Prop.computed __resource_type __resource_id
           "downlink_loss_percent";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project_arn =
         Prop.computed __resource_type __resource_id "project_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
       uplink_bandwidth_bits =
         Prop.computed __resource_type __resource_id
           "uplink_bandwidth_bits";
       uplink_delay_ms =
         Prop.computed __resource_type __resource_id
           "uplink_delay_ms";
       uplink_jitter_ms =
         Prop.computed __resource_type __resource_id
           "uplink_jitter_ms";
       uplink_loss_percent =
         Prop.computed __resource_type __resource_id
           "uplink_loss_percent";
     }
      : t)
  in
  __resource_attributes
