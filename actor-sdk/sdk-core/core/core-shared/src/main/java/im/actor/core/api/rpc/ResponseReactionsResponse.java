package im.actor.core.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;
import im.actor.runtime.collections.*;

import static im.actor.runtime.bser.Utils.*;

import im.actor.core.network.parser.*;

import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;

import com.google.j2objc.annotations.ObjectiveCName;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

import im.actor.core.api.*;

public class ResponseReactionsResponse extends Response {

    public static final int HEADER = 0xdb;

    public static ResponseReactionsResponse fromBytes(byte[] data) throws IOException {
        return Bser.parse(new ResponseReactionsResponse(), data);
    }

    private int seq;
    private byte[] state;
    private List<ApiMessageReaction> reactions;

    public ResponseReactionsResponse(int seq, @NotNull byte[] state, @NotNull List<ApiMessageReaction> reactions) {
        this.seq = seq;
        this.state = state;
        this.reactions = reactions;
    }

    public ResponseReactionsResponse() {

    }

    public int getSeq() {
        return this.seq;
    }

    @NotNull
    public byte[] getState() {
        return this.state;
    }

    @NotNull
    public List<ApiMessageReaction> getReactions() {
        return this.reactions;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.seq = values.getInt(1);
        this.state = values.getBytes(2);
        List<ApiMessageReaction> _reactions = new ArrayList<ApiMessageReaction>();
        for (int i = 0; i < values.getRepeatedCount(3); i++) {
            _reactions.add(new ApiMessageReaction());
        }
        this.reactions = values.getRepeatedObj(3, _reactions);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.seq);
        if (this.state == null) {
            throw new IOException();
        }
        writer.writeBytes(2, this.state);
        writer.writeRepeatedObj(3, this.reactions);
    }

    @Override
    public String toString() {
        String res = "response ReactionsResponse{";
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
