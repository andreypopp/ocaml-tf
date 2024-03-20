(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?force_detach ?id ?skip_destroy
    ?stop_instance_before_detaching ?timeouts ~device_name
    ~instance_id ~volume_id __id =
  let __type = "aws_volume_attachment" in
  let __attrs =
    ({
       device_name = Prop.computed __type __id "device_name";
       force_detach = Prop.computed __type __id "force_detach";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       skip_destroy = Prop.computed __type __id "skip_destroy";
       stop_instance_before_detaching =
         Prop.computed __type __id "stop_instance_before_detaching";
       volume_id = Prop.computed __type __id "volume_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_volume_attachment
        (aws_volume_attachment ?force_detach ?id ?skip_destroy
           ?stop_instance_before_detaching ?timeouts ~device_name
           ~instance_id ~volume_id ());
    attrs = __attrs;
  }

let register ?tf_module ?force_detach ?id ?skip_destroy
    ?stop_instance_before_detaching ?timeouts ~device_name
    ~instance_id ~volume_id __id =
  let (r : _ Tf_core.resource) =
    make ?force_detach ?id ?skip_destroy
      ?stop_instance_before_detaching ?timeouts ~device_name
      ~instance_id ~volume_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
