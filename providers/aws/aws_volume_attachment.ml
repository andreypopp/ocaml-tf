(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_volume_attachment = {
  device_name : string prop;  (** device_name *)
  force_detach : bool prop option; [@option]  (** force_detach *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  stop_instance_before_detaching : bool prop option; [@option]
      (** stop_instance_before_detaching *)
  volume_id : string prop;  (** volume_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_volume_attachment *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_volume_attachment ?force_detach ?id ?skip_destroy
    ?stop_instance_before_detaching ?timeouts ~device_name
    ~instance_id ~volume_id () : aws_volume_attachment =
  {
    device_name;
    force_detach;
    id;
    instance_id;
    skip_destroy;
    stop_instance_before_detaching;
    volume_id;
    timeouts;
  }

type t = {
  device_name : string prop;
  force_detach : bool prop;
  id : string prop;
  instance_id : string prop;
  skip_destroy : bool prop;
  stop_instance_before_detaching : bool prop;
  volume_id : string prop;
}

let register ?tf_module ?force_detach ?id ?skip_destroy
    ?stop_instance_before_detaching ?timeouts ~device_name
    ~instance_id ~volume_id __resource_id =
  let __resource_type = "aws_volume_attachment" in
  let __resource =
    aws_volume_attachment ?force_detach ?id ?skip_destroy
      ?stop_instance_before_detaching ?timeouts ~device_name
      ~instance_id ~volume_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_volume_attachment __resource);
  let __resource_attributes =
    ({
       device_name =
         Prop.computed __resource_type __resource_id "device_name";
       force_detach =
         Prop.computed __resource_type __resource_id "force_detach";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       skip_destroy =
         Prop.computed __resource_type __resource_id "skip_destroy";
       stop_instance_before_detaching =
         Prop.computed __resource_type __resource_id
           "stop_instance_before_detaching";
       volume_id =
         Prop.computed __resource_type __resource_id "volume_id";
     }
      : t)
  in
  __resource_attributes
