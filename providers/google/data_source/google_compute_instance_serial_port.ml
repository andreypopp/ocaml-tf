(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_compute_instance_serial_port = {
  id : string prop option; [@option]
  instance : string prop;
  port : float prop;
  project : string prop option; [@option]
  zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_instance_serial_port) -> ()

let yojson_of_google_compute_instance_serial_port =
  (function
   | {
       id = v_id;
       instance = v_instance;
       port = v_port;
       project = v_project;
       zone = v_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance in
         ("instance", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_instance_serial_port ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_instance_serial_port

[@@@deriving.end]

let google_compute_instance_serial_port ?id ?project ?zone ~instance
    ~port () : google_compute_instance_serial_port =
  { id; instance; port; project; zone }

type t = {
  tf_name : string;
  contents : string prop;
  id : string prop;
  instance : string prop;
  port : float prop;
  project : string prop;
  zone : string prop;
}

let make ?id ?project ?zone ~instance ~port __id =
  let __type = "google_compute_instance_serial_port" in
  let __attrs =
    ({
       tf_name = __id;
       contents = Prop.computed __type __id "contents";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_instance_serial_port
        (google_compute_instance_serial_port ?id ?project ?zone
           ~instance ~port ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?zone ~instance ~port __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?zone ~instance ~port __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
