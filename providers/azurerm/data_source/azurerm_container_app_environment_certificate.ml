(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_container_app_environment_certificate = {
  container_app_environment_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_app_environment_certificate) -> ()

let yojson_of_azurerm_container_app_environment_certificate =
  (function
   | {
       container_app_environment_id = v_container_app_environment_id;
       id = v_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_container_app_environment_id
         in
         ("container_app_environment_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_container_app_environment_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_app_environment_certificate

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_container_app_environment_certificate ?id ?timeouts
    ~container_app_environment_id ~name () :
    azurerm_container_app_environment_certificate =
  { container_app_environment_id; id; name; timeouts }

type t = {
  container_app_environment_id : string prop;
  expiration_date : string prop;
  id : string prop;
  issue_date : string prop;
  issuer : string prop;
  name : string prop;
  subject_name : string prop;
  tags : (string * string) list prop;
  thumbprint : string prop;
}

let make ?id ?timeouts ~container_app_environment_id ~name __id =
  let __type = "azurerm_container_app_environment_certificate" in
  let __attrs =
    ({
       container_app_environment_id =
         Prop.computed __type __id "container_app_environment_id";
       expiration_date = Prop.computed __type __id "expiration_date";
       id = Prop.computed __type __id "id";
       issue_date = Prop.computed __type __id "issue_date";
       issuer = Prop.computed __type __id "issuer";
       name = Prop.computed __type __id "name";
       subject_name = Prop.computed __type __id "subject_name";
       tags = Prop.computed __type __id "tags";
       thumbprint = Prop.computed __type __id "thumbprint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_app_environment_certificate
        (azurerm_container_app_environment_certificate ?id ?timeouts
           ~container_app_environment_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~container_app_environment_id
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~container_app_environment_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
