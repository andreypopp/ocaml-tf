(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_fsx_openzfs_snapshot = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  volume_id : string prop;  (** volume_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_snapshot *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_fsx_openzfs_snapshot ?id ?tags ?tags_all ?timeouts ~name
    ~volume_id () : aws_fsx_openzfs_snapshot =
  { id; name; tags; tags_all; volume_id; timeouts }

type t = {
  arn : string prop;
  creation_time : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  volume_id : string prop;
}

let make ?id ?tags ?tags_all ?timeouts ~name ~volume_id __id =
  let __type = "aws_fsx_openzfs_snapshot" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       creation_time = Prop.computed __type __id "creation_time";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       volume_id = Prop.computed __type __id "volume_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fsx_openzfs_snapshot
        (aws_fsx_openzfs_snapshot ?id ?tags ?tags_all ?timeouts ~name
           ~volume_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~name
    ~volume_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~name ~volume_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
