(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type emergency_contact = {
  contact_notes : string prop option; [@option]
  email_address : string prop;
  phone_number : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : emergency_contact) -> ()

let yojson_of_emergency_contact =
  (function
   | {
       contact_notes = v_contact_notes;
       email_address = v_email_address;
       phone_number = v_phone_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_phone_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "phone_number", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email_address in
         ("email_address", arg) :: bnds
       in
       let bnds =
         match v_contact_notes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "contact_notes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : emergency_contact -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_emergency_contact

[@@@deriving.end]

type aws_shield_proactive_engagement = {
  enabled : bool prop;
  emergency_contact : emergency_contact list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_shield_proactive_engagement) -> ()

let yojson_of_aws_shield_proactive_engagement =
  (function
   | { enabled = v_enabled; emergency_contact = v_emergency_contact }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_emergency_contact then bnds
         else
           let arg =
             (yojson_of_list yojson_of_emergency_contact)
               v_emergency_contact
           in
           let bnd = "emergency_contact", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : aws_shield_proactive_engagement ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_shield_proactive_engagement

[@@@deriving.end]

let emergency_contact ?contact_notes ?phone_number ~email_address ()
    : emergency_contact =
  { contact_notes; email_address; phone_number }

let aws_shield_proactive_engagement ?(emergency_contact = [])
    ~enabled () : aws_shield_proactive_engagement =
  { enabled; emergency_contact }

type t = { tf_name : string; enabled : bool prop; id : string prop }

let make ?(emergency_contact = []) ~enabled __id =
  let __type = "aws_shield_proactive_engagement" in
  let __attrs =
    ({
       tf_name = __id;
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_shield_proactive_engagement
        (aws_shield_proactive_engagement ~emergency_contact ~enabled
           ());
    attrs = __attrs;
  }

let register ?tf_module ?(emergency_contact = []) ~enabled __id =
  let (r : _ Tf_core.resource) =
    make ~emergency_contact ~enabled __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
