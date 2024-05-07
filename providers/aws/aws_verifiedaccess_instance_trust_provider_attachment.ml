(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_verifiedaccess_instance_trust_provider_attachment = {
  id : string prop option; [@option]
  verifiedaccess_instance_id : string prop;
  verifiedaccess_trust_provider_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_verifiedaccess_instance_trust_provider_attachment) ->
  ()

let yojson_of_aws_verifiedaccess_instance_trust_provider_attachment =
  (function
   | {
       id = v_id;
       verifiedaccess_instance_id = v_verifiedaccess_instance_id;
       verifiedaccess_trust_provider_id =
         v_verifiedaccess_trust_provider_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_verifiedaccess_trust_provider_id
         in
         ("verifiedaccess_trust_provider_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_verifiedaccess_instance_id
         in
         ("verifiedaccess_instance_id", arg) :: bnds
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
    : aws_verifiedaccess_instance_trust_provider_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_aws_verifiedaccess_instance_trust_provider_attachment

[@@@deriving.end]

let aws_verifiedaccess_instance_trust_provider_attachment ?id
    ~verifiedaccess_instance_id ~verifiedaccess_trust_provider_id ()
    : aws_verifiedaccess_instance_trust_provider_attachment =
  {
    id;
    verifiedaccess_instance_id;
    verifiedaccess_trust_provider_id;
  }

type t = {
  tf_name : string;
  id : string prop;
  verifiedaccess_instance_id : string prop;
  verifiedaccess_trust_provider_id : string prop;
}

let make ?id ~verifiedaccess_instance_id
    ~verifiedaccess_trust_provider_id __id =
  let __type =
    "aws_verifiedaccess_instance_trust_provider_attachment"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       verifiedaccess_instance_id =
         Prop.computed __type __id "verifiedaccess_instance_id";
       verifiedaccess_trust_provider_id =
         Prop.computed __type __id "verifiedaccess_trust_provider_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedaccess_instance_trust_provider_attachment
        (aws_verifiedaccess_instance_trust_provider_attachment ?id
           ~verifiedaccess_instance_id
           ~verifiedaccess_trust_provider_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~verifiedaccess_instance_id
    ~verifiedaccess_trust_provider_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~verifiedaccess_instance_id
      ~verifiedaccess_trust_provider_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
