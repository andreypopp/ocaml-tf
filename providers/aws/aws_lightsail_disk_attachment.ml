(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_disk_attachment = {
  disk_name : string prop;  (** disk_name *)
  disk_path : string prop;  (** disk_path *)
  id : string prop option; [@option]  (** id *)
  instance_name : string prop;  (** instance_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_disk_attachment *)

let aws_lightsail_disk_attachment ?id ~disk_name ~disk_path
    ~instance_name () : aws_lightsail_disk_attachment =
  { disk_name; disk_path; id; instance_name }

type t = {
  disk_name : string prop;
  disk_path : string prop;
  id : string prop;
  instance_name : string prop;
}

let make ?id ~disk_name ~disk_path ~instance_name __id =
  let __type = "aws_lightsail_disk_attachment" in
  let __attrs =
    ({
       disk_name = Prop.computed __type __id "disk_name";
       disk_path = Prop.computed __type __id "disk_path";
       id = Prop.computed __type __id "id";
       instance_name = Prop.computed __type __id "instance_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_disk_attachment
        (aws_lightsail_disk_attachment ?id ~disk_name ~disk_path
           ~instance_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~disk_name ~disk_path ~instance_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~disk_name ~disk_path ~instance_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
