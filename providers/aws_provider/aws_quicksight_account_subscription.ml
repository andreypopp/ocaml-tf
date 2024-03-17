(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_account_subscription__timeouts = {
  create: string prop option; [@option] (** create *)
  delete: string prop option; [@option] (** delete *)
  read: string prop option; [@option] (** read *)
} [@@deriving yojson_of]
(** aws_quicksight_account_subscription__timeouts *)

type aws_quicksight_account_subscription = {
  account_name: string prop;  (** account_name *)
  active_directory_name: string prop option; [@option] (** active_directory_name *)
  admin_group: string prop list option; [@option] (** admin_group *)
  authentication_method: string prop;  (** authentication_method *)
  author_group: string prop list option; [@option] (** author_group *)
  aws_account_id: string prop option; [@option] (** aws_account_id *)
  contact_number: string prop option; [@option] (** contact_number *)
  directory_id: string prop option; [@option] (** directory_id *)
  edition: string prop;  (** edition *)
  email_address: string prop option; [@option] (** email_address *)
  first_name: string prop option; [@option] (** first_name *)
  id: string prop option; [@option] (** id *)
  last_name: string prop option; [@option] (** last_name *)
  notification_email: string prop;  (** notification_email *)
  reader_group: string prop list option; [@option] (** reader_group *)
  realm: string prop option; [@option] (** realm *)
  timeouts: aws_quicksight_account_subscription__timeouts option;
} [@@deriving yojson_of]
(** aws_quicksight_account_subscription *)

let aws_quicksight_account_subscription ?active_directory_name ?admin_group ?author_group ?aws_account_id ?contact_number ?directory_id ?email_address ?first_name ?id ?last_name ?reader_group ?realm ?timeouts ~account_name ~authentication_method ~edition ~notification_email  __resource_id =
  let __resource_type = "aws_quicksight_account_subscription" in
  let __resource = {
    account_name;
    active_directory_name;
    admin_group;
    authentication_method;
    author_group;
    aws_account_id;
    contact_number;
    directory_id;
    edition;
    email_address;
    first_name;
    id;
    last_name;
    notification_email;
    reader_group;
    realm;
    timeouts;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_account_subscription __resource);
  ()
  ;;

