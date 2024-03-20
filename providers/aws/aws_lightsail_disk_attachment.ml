(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_disk_attachment = {
  disk_name : string prop;
  disk_path : string prop;
  id : string prop option; [@option]
  instance_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_disk_attachment) -> ()

let yojson_of_aws_lightsail_disk_attachment =
  (function
   | {
       disk_name = v_disk_name;
       disk_path = v_disk_path;
       id = v_id;
       instance_name = v_instance_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_name in
         ("instance_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk_path in
         ("disk_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk_name in
         ("disk_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_lightsail_disk_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_disk_attachment

[@@@deriving.end]

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
