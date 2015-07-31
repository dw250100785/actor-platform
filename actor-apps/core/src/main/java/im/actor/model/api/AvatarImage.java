package im.actor.model.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.util.SparseArray;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;

public class AvatarImage extends BserObject {

    private FileLocation fileLocation;
    private int width;
    private int height;
    private int fileSize;

    public AvatarImage(@NotNull FileLocation fileLocation, int width, int height, int fileSize) {
        this.fileLocation = fileLocation;
        this.width = width;
        this.height = height;
        this.fileSize = fileSize;
    }

    public AvatarImage() {

    }

    @NotNull
    public FileLocation getFileLocation() {
        return this.fileLocation;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public int getFileSize() {
        return this.fileSize;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.fileLocation = values.getObj(1, new FileLocation());
        this.width = values.getInt(2);
        this.height = values.getInt(3);
        this.fileSize = values.getInt(4);
        if (values.hasRemaining()) {
            setUnmappedObjects(values.buildRemaining());
        }
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.fileLocation == null) {
            throw new IOException();
        }
        writer.writeObject(1, this.fileLocation);
        writer.writeInt(2, this.width);
        writer.writeInt(3, this.height);
        writer.writeInt(4, this.fileSize);
        if (this.getUnmappedObjects() != null) {
            SparseArray<Object> unmapped = this.getUnmappedObjects();
            for (int i = 0; i < unmapped.size(); i++) {
                int key = unmapped.keyAt(i);
                writer.writeUnmapped(key, unmapped.get(key));
            }
        }
    }

    @Override
    public String toString() {
        String res = "struct AvatarImage{";
        res += "fileLocation=" + this.fileLocation;
        res += ", width=" + this.width;
        res += ", height=" + this.height;
        res += ", fileSize=" + this.fileSize;
        res += "}";
        return res;
    }

}
