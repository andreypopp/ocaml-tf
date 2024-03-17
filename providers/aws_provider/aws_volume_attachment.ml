(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_volume_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_volume_attachment__timeouts *)

type aws_volume_attachment = {
  device_name : string;  (** device_name *)
  force_detach : bool option; [@option]  (** force_detach *)
  instance_id : string;  (** instance_id *)
  skip_destroy : bool option; [@option]  (** skip_destroy *)
  stop_instance_before_detaching : bool option; [@option]
      (** stop_instance_before_detaching *)
  volume_id : string;  (** volume_id *)
  timeouts : aws_volume_attachment__timeouts option;
}
[@@deriving yojson_of]
(** aws_volume_attachment *)

let aws_volume_attachment ?force_detach ?skip_destroy
    ?stop_instance_before_detaching ?timeouts ~device_name
    ~instance_id ~volume_id __resource_id =
  let __resource_type = "aws_volume_attachment" in
  let __resource =
    {
      device_name;
      force_detach;
      instance_id;
      skip_destroy;
      stop_instance_before_detaching;
      volume_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_volume_attachment __resource);
  ()
