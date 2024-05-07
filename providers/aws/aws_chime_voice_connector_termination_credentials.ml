(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type credentials = { password : string prop; username : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : credentials) -> ()

let yojson_of_credentials =
  (function
   | { password = v_password; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : credentials -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_credentials

[@@@deriving.end]

type aws_chime_voice_connector_termination_credentials = {
  id : string prop option; [@option]
  voice_connector_id : string prop;
  credentials : credentials list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_chime_voice_connector_termination_credentials) -> ()

let yojson_of_aws_chime_voice_connector_termination_credentials =
  (function
   | {
       id = v_id;
       voice_connector_id = v_voice_connector_id;
       credentials = v_credentials;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_credentials v_credentials
         in
         ("credentials", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_voice_connector_id
         in
         ("voice_connector_id", arg) :: bnds
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
    : aws_chime_voice_connector_termination_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_chime_voice_connector_termination_credentials

[@@@deriving.end]

let credentials ~password ~username () : credentials =
  { password; username }

let aws_chime_voice_connector_termination_credentials ?id
    ~voice_connector_id ~credentials () :
    aws_chime_voice_connector_termination_credentials =
  { id; voice_connector_id; credentials }

type t = {
  tf_name : string;
  id : string prop;
  voice_connector_id : string prop;
}

let make ?id ~voice_connector_id ~credentials __id =
  let __type = "aws_chime_voice_connector_termination_credentials" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       voice_connector_id =
         Prop.computed __type __id "voice_connector_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chime_voice_connector_termination_credentials
        (aws_chime_voice_connector_termination_credentials ?id
           ~voice_connector_id ~credentials ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~voice_connector_id ~credentials __id =
  let (r : _ Tf_core.resource) =
    make ?id ~voice_connector_id ~credentials __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
