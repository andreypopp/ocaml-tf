(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_netapp_kmsconfig = {
  crypto_key_name : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_netapp_kmsconfig) -> ()

let yojson_of_google_netapp_kmsconfig =
  (function
   | {
       crypto_key_name = v_crypto_key_name;
       description = v_description;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_crypto_key_name
         in
         ("crypto_key_name", arg) :: bnds
       in
       `Assoc bnds
    : google_netapp_kmsconfig -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_netapp_kmsconfig

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_netapp_kmsconfig ?description ?id ?labels ?project
    ?timeouts ~crypto_key_name ~location ~name () :
    google_netapp_kmsconfig =
  {
    crypto_key_name;
    description;
    id;
    labels;
    location;
    name;
    project;
    timeouts;
  }

type t = {
  tf_name : string;
  crypto_key_name : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  instructions : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

let make ?description ?id ?labels ?project ?timeouts ~crypto_key_name
    ~location ~name __id =
  let __type = "google_netapp_kmsconfig" in
  let __attrs =
    ({
       tf_name = __id;
       crypto_key_name = Prop.computed __type __id "crypto_key_name";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       instructions = Prop.computed __type __id "instructions";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_account = Prop.computed __type __id "service_account";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_netapp_kmsconfig
        (google_netapp_kmsconfig ?description ?id ?labels ?project
           ?timeouts ~crypto_key_name ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ~crypto_key_name ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?timeouts ~crypto_key_name
      ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
